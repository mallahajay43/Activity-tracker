const more=document.querySelectorAll('.more');
const addbtn=document.querySelector('.add');
const removeBtn=document.querySelectorAll('.remove');
const crossBtn=document.querySelector('.cross');
const formNote=document.querySelector('.form-note');



// note element;

function createNote(){
let noteBlock=document.createElement('div');
noteBlock.classList.add('task');
let title=document.createElement('div');
title.classList.add('title-dash');
let description=document.createElement('div');
description.classList.add('description-dash');
let noteRemove=document.createElement('i');
noteRemove.classList.add('fas', 'fa-trash', 'btn-note','remove', 'btn-up');
let noteMore=document.createElement('i');
noteMore.classList.add('fas', 'fa-ellipsis-h', 'btn-note','more', 'btn-down');

noteBlock.appendChild(title);
noteBlock.appendChild(description);
noteBlock.appendChild(noteRemove);
noteBlock.appendChild(noteMore);

return noteBlock;
}


addbtn.addEventListener('click', (e)=>{
    // console.log(e.target.parentNode.parentNode.childNodes);
    // console.log(e.target.parentNode.parentNode.parentNode);
    // let tasks=e.target.parentNode.parentNode.parentNode.childNodes[3];
    // tasks.appendChild(createNote());
    formNote.classList.toggle('hide-form-note');

})


 more.forEach(element => {
    element.addEventListener('click', (e)=>{
        let desc=e.target.parentNode.childNodes[3];
        let task=e.target.parentNode;
        task.classList.toggle('show-task');
        desc.classList.toggle('show-description-dash');
    
    })
})    


// remove note
/*removeBtn.forEach(element =>{
    element.addEventListener('click', (e)=>{
        let desc=e.target.parentNode;
        let descParent=e.target.parentNode.parentNode;
        console.log(desc);
        console.log(descParent);
        descParent.remove(desc);
    })
})*/

// close form 
crossBtn.addEventListener('click', (e)=>{
    // translate form to -100% 
    e.target.parentNode.parentNode.classList.toggle('hide-form-note');
})