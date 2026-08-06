.class Lcom/perm/kate/Settings$36$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Settings$36;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/Settings$36;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings$36;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/Settings$36;

    .prologue
    .line 1010
    iput-object p1, p0, Lcom/perm/kate/Settings$36$1;->this$1:Lcom/perm/kate/Settings$36;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1013
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/Settings$36$1;->this$1:Lcom/perm/kate/Settings$36;

    iget-object v1, v1, Lcom/perm/kate/Settings$36;->this$0:Lcom/perm/kate/Settings;

    const-class v2, Lcom/perm/kate/FileManager;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1014
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "select_folder"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1015
    const-string v1, "default_dir_name"

    const-string v2, "audio_cache"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1016
    iget-object v1, p0, Lcom/perm/kate/Settings$36$1;->this$1:Lcom/perm/kate/Settings$36;

    iget-object v1, v1, Lcom/perm/kate/Settings$36;->this$0:Lcom/perm/kate/Settings;

    const/16 v2, 0x7db

    invoke-virtual {v1, v0, v2}, Lcom/perm/kate/Settings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1017
    return-void
.end method
