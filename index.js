import moCompiler from './lib/mocompiler.js';
import moParser from './lib/moparser.js';
import poCompiler from './lib/pocompiler.js';
import * as poParser from './lib/poparser.js';

export const po = {
  parse: poParser.parse,
  createParseStream: poParser.stream,
  compile: poCompiler
};

export const mo = {
  parse: moParser,
  compile: moCompiler
};

export default { mo, po };
