<script setup>
import { useToast } from 'primevue/usetoast';

const toast = useToast();

window.addEventListener("message", (event) => {
  if (event.data.type != "notify") return;

  const { severity, title, description, life, position } = event.data.data;

  toast.add({ severity: severity, summary: title, detail: description, life: life, group: position });
});
</script>

<template>
  <Toast position="center" group="center" />
  <Toast position="top-left" group="topleft" />
  <Toast position="top-center" group="topcenter" />
  <Toast position="top-right" group="topright" />
  <Toast position="bottom-left" group="bottomleft" />
  <Toast position="bottom-center" group="bottomcenter" />
  <Toast position="bottom-right" group="bottomright" />
</template>

<style>
:root {
  color-scheme: none !important;
  font-family: "Inter", sans-serif !important;
}

body {
  padding: 0 !important;
  margin: 0 !important;
}

.p-toast .p-toast-message {
  backdrop-filter: none !important;
}

.p-toast-message-warn {
  background: rgba(234, 178, 8, 0.16) !important;
}

.p-toast-message-info {
  background: rgba(59, 130, 246, 0.16) !important;
}

.p-toast-message-success {
  background: rgba(34, 197, 94, 0.16) !important;
}

.p-toast-message-error {
  background: rgba(239, 68, 68, 0.16) !important;
}
</style>
