

/* global ui */

class Specie {
    constructor(name, image) {
        this.name = name;
        this.image = image;
        
    }


}
class UI {
    //aqui se guardaran los metodos de la interfaz 
    addSpecie(Specie) {
        const specieList = document.getElementById('specie-list');
        const element = document.createElement('div');
        element.innerHTML = `
        <div class="card text-center mb-4">
            <div class="card-body">
                <strong>Specie name</strong>: ${Specie.name} -
                <img src=${Specie.image}> - 
                <a href="#" class="btn btn-danger" name="delete">Delete</a>
            </div>
        </div>
    `;
        specieList.appendChild(element);

    }
    resetForm() {
        document.getElementById('specie-form').reset();
    }
    deleteSpecie(element) {
        if (element.name === "delete") {
            element.parentElement.parentElement.remove();
            this.showMessage('Specie deleted','danger');
        }

    }
    showMessage(message, cssClass) {
        const div = document.createElement("div");
        div.className = `alert alert-${cssClass} mt-2`;
        div.appendChild(document.createTextNode(message));
    
        // Show in The DOM
        const container = document.querySelector(".container");
        const app = document.querySelector("#App");
         // Insert Message in the UI
        container.insertBefore(div, app);   
        setTimeout(function() {
            document.querySelector('.alert').remove();
        },3000);
    
    }
    
}
// eventos del Dom
document.getElementById('specie-form')
        .addEventListener('submit', function (e) {
       
        const name = document.getElementById('name').value;
        const image = document.getElementById('image').value;
        

        const specie = new Specie(name, image);
        if (name === "" || image === "" ) {
            return ui.showMessage("Please Insert data in all fields", "danger");
          }
        const ui = new UI();
        ui.addSpecie(specie);
        ui.resetForm(e.target);
        ui.showMessage('Specie Added Successfully', 'success');

        e.preventDefault();
        

    });
    document.getElementById("specie-list").addEventListener("click", (e) => {
        const ui = new UI();
        ui.deleteSpecie(e.target);
    });
