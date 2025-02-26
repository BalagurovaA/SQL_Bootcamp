CREATE TABLE person_discounts
( id bigint primary key,
  person_id bigint not null,
  pizzeria_id bigint not null,
  discount numeric not null,

  constraint fk_person_discounts_person_id foreign key (person_id) references person(id),
  constraint fk_person_discounts_pizzeris_id foreign key (pizzeria_id) references pizzeria(id)
);



DROP TABLE person_discounts;