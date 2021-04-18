import { parse } from "https://deno.land/std@0.93.0/flags/mod.ts";

const args = parse(Deno.args);

if (args.url === undefined) {
  console.error("No repo url defined");
  Deno.exit();
}

const res = await fetch(args.url);

console.log(res);

//console.dir(parse(Deno.args));
