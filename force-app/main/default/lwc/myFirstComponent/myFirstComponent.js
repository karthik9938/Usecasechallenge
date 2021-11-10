import { LightningElement } from 'lwc';

export default class MyFirstComponent extends LightningElement {

    title;
    showTitle(){
        this.title=this.template.querySelector('lightning-input').value;
    }
}