class profile::agent_nodes {
  include dockeragent
  dockeragent::node { 'web.puppet.vm': }
  dockeragent::node { 'db.puppet.vm': }
  dockeragent::node { 'minetest.puppet.vm': }
  host {'web.puppet.vm':
     ensure =>  present,
     ip     => '172.30.0.2',
      }
  host {'db.puppet.vm':
     ensure =>  present,
     ip     => '172.30.0.3',
     }
}
