let output = "";
let current = grammar.ParserStart;
let tree = [grammar.ParserStart];
let rules = [];
let path = [];

function generate() {
	output = "";
	current = grammar.ParserStart;
	tree = [grammar.ParserStart];
	rules = [];
	path = [];
	build(tree);
	output = tree.toString().replaceAll(",", "");
	document.getElementById("output").innerHTML = output;
	}

function build(t) {
	let formatted = [];
	let deformatted = [];
	rules = grammar.ParserRules.filter(lookUp);
	choice = choose(rules);
	subrules = choice.symbols;
	for (let x of subrules) {
		formatted.push([x])
		}
	if (path.length === 0) {
			tree = [...formatted];
		} else if (typeof subrules[0] === "object") {
			modify(tree, path, joiner(subrules));
		} else {
			modify(tree, path, formatted);
		}
	for (let x = 0; x < formatted.length; x++) {
        if (typeof formatted[x][0] === "string" && path.length <= 100) {
                path.push(x);
                current = formatted[x][0];
                build(formatted[x]);
                path.pop();
            }
        }
	}

function lookUp(rule) {
	return rule.name === current;
	}

function choose(list) {
	const chance = 1 / list.length;
	const outcome = Math.random();
	let cumulative = chance;
	for (i = 0; i < list.length; i++) {
		if (outcome < cumulative) {
			return list[i];
		} else {
			cumulative += chance;
			}
		}
	}

function modify(tree, path, value) {
    let current = tree;
    for (let i = 0; i < path.length - 1; i++) {
        current = current[path[i]];
		}
    current[path[path.length - 1]] = value;
	}

function joiner(d) {
	let joined = "";
	for (let x of d) {
		joined += x.literal;
	}
	return joined;
	}