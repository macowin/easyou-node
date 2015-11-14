export default [
  [/^login$/, 'admin/login/index'],
  [/^logout$/, 'admin/logout/index'],
  [/^reg$/, 'admin/reg/index'],
  [/^article\/(\d+)$/, "home/article/detail?id=:1"]
];