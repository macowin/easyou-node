'use strict';
/**
 * model
 */

export default class extends think.model.base {
  * reg (map) {
    let self = this;
    map.pass = think.md5(map.pass + 'easyou');
    let data = yield self.thenAdd(map, {user: map.user});
    return data;
  }

  * login (map) {
    let self = this;
    map.pass = think.md5(map.pass+'easyou');
    let data = yield self.where(map).find();
    return data;
    }
}