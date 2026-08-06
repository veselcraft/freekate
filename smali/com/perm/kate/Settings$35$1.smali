.class Lcom/perm/kate/Settings$35$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Settings$35;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/Settings$35;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings$35;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/Settings$35;

    .prologue
    .line 963
    iput-object p1, p0, Lcom/perm/kate/Settings$35$1;->this$1:Lcom/perm/kate/Settings$35;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 966
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/Settings$35$1;->this$1:Lcom/perm/kate/Settings$35;

    iget-object v1, v1, Lcom/perm/kate/Settings$35;->this$0:Lcom/perm/kate/Settings;

    const-class v2, Lcom/perm/kate/FileManager;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 967
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "select_folder"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 968
    const-string v1, "default_dir_name"

    const-string v2, "KatePhotos"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 969
    iget-object v1, p0, Lcom/perm/kate/Settings$35$1;->this$1:Lcom/perm/kate/Settings$35;

    iget-object v1, v1, Lcom/perm/kate/Settings$35;->this$0:Lcom/perm/kate/Settings;

    const/16 v2, 0x7dc

    invoke-virtual {v1, v0, v2}, Lcom/perm/kate/Settings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 970
    return-void
.end method
