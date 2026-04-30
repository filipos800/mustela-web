import * as THREE from 'three'

const container = document.querySelector('#architecture-canvas');
const scene = new THREE.Scene();
const camera = new THREE.PerspectiveCamera(75, container.clientWidth / container.clientHeight, 0.1, 1000);
const renderer = new THREE.WebGLRenderer({ alpha: true, antialias: true });
renderer.setSize(container.clientWidth, container.clientHeight);
container.appendChild(renderer.domElement);

const blueMat = new THREE.MeshBasicMaterial({ color: 0x58a6ff, wireframe: true, transparent: true, opacity: 0.3 });
const orangeMat = new THREE.MeshBasicMaterial({ color: 0xf78166, wireframe: true });
const greenMat = new THREE.MeshBasicMaterial({ color: 0x39d353, wireframe: true, transparent: true, opacity: 0.3 });

const blocks = [];
const boxGeo = new THREE.BoxGeometry(1.5, 0.8, 0.8);

for (let i = 0; i < 6; i++) {
    const block = new THREE.Mesh(boxGeo, blueMat.clone());
    block.position.x = -15 + (i * 6);
    scene.add(block);
    blocks.push(block);
}

const gateGeo = new THREE.TorusGeometry(2, 0.02, 16, 4);
const gate = new THREE.Mesh(gateGeo, orangeMat);
gate.rotation.y = Math.PI / 2;
scene.add(gate);

camera.position.z = 10;
camera.position.y = 2;
camera.lookAt(0,0,0);

function animate() {
    requestAnimationFrame(animate);

    blocks.forEach(block => {
        block.position.x += 0.15;

        if (block.position.x > -1 && block.position.x < 1) {
            block.material.color.set(0xf78166);
            block.material.opacity = 1;
            block.rotation.x += 0.1;
        } 
        else if (block.position.x >= 1) {
            block.material.color.set(0x39d353);
            block.material.opacity = 0.3;
            block.rotation.x *= 0.9;
        }
        else {
            block.material.color.set(0x58a6ff);
            block.material.opacity = 0.3;
        }

        if (block.position.x > 15) {
            block.position.x = -15;
        }
    });

    gate.rotation.x += 0.01;
    renderer.render(scene, camera);
}
animate();
