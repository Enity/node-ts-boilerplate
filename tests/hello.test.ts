import { hello } from '../src';
import { equal } from 'assert';

import 'mocha';

describe('Sample test', () => {

  it('Hello', () => {
    const result = hello();
    equal(result, 'hello');
  });

});
