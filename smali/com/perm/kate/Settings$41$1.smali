.class Lcom/perm/kate/Settings$41$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Settings$41;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/Settings$41;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings$41;)V
    .locals 0

    .line 1118
    iput-object p1, p0, Lcom/perm/kate/Settings$41$1;->this$1:Lcom/perm/kate/Settings$41;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1121
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/perm/kate/Settings$41$1;->this$1:Lcom/perm/kate/Settings$41;

    iget-object v0, v0, Lcom/perm/kate/Settings$41;->this$0:Lcom/perm/kate/Settings;

    const-class v1, Lcom/perm/kate/FileManager;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "select_folder"

    const/4 v1, 0x1

    .line 1122
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "default_dir_name"

    const-string v1, "KatePhotos"

    .line 1123
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1124
    iget-object v0, p0, Lcom/perm/kate/Settings$41$1;->this$1:Lcom/perm/kate/Settings$41;

    iget-object v0, v0, Lcom/perm/kate/Settings$41;->this$0:Lcom/perm/kate/Settings;

    const/16 v1, 0x7dc

    invoke-virtual {v0, p1, v1}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
