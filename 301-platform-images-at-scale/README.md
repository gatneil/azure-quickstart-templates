# Custom Images at Scale

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2F301-platform-images-at-scale%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2F301-platform-images-at-scale%2Fazuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>

This template deploys platform images at scale with options to use VM Scale Sets, regular VMs, or regular VMs in an availability set.  It is designed so that it can be called from other templates, and you can build on top of it.  The individual VMs that get created do not have public IPs, so you will have to include a jumpbox, load balancer, or similar solution to access the VMs.

The option you pass the template determines which design it will use for the final VMs:
- VMSS - This will create the VMs as a series of VM scale sets.  (final_VMSS.json)
- Single - This will create the VMs as a series of individual VMs.  You can further customize them in the template if needed.  (final_Single.json, vm_baseSingle.json)
- SingleAV - This will create the VMs as a series of individual VMs that are all within an availability set.  You cannot exceed 100 total VMs if using this method.  (final_SingleAV.json, vm_baseSingleAV.json)
