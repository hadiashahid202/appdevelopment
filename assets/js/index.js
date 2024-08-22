function toggleSidebar() {
    const sidebar = document.getElementById('sidebar');
    const isOpen = sidebar.style.left === '0px';

    if (isOpen) {
        sidebar.style.left = '-100%';
    } else {
        sidebar.style.left = '0px';
    }
}

function closeSidebar() {
    document.getElementById('sidebar').style.left = '-100%';
}