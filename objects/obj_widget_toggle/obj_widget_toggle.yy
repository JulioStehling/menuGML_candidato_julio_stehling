{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_widget_toggle",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":8,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_par_widget","path":"objects/obj_par_widget/obj_par_widget.yy",},"propertyId":{"name":"sprite","path":"objects/obj_par_widget/obj_par_widget.yy",},"value":"spr_wid_toggle",},
  ],
  "parent": {
    "name": "widgets",
    "path": "folders/Objects/menu/widgets.yy",
  },
  "parentObjectId": {
    "name": "obj_par_widget",
    "path": "objects/obj_par_widget/obj_par_widget.yy",
  },
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"toggle_sprite","filters":[
        "GMSprite",
      ],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"spr_wid_toggle_check","varType":5,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"funcao","filters":[],"listItems":[
        "toggle_tela_cheia",
      ],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"toggle_tela_cheia","varType":6,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"funcao_check","filters":[],"listItems":[
        "toggle_check_tela_cheia",
      ],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"toggle_check_tela_cheia","varType":6,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_wid_toggle",
    "path": "sprites/spr_wid_toggle/spr_wid_toggle.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}