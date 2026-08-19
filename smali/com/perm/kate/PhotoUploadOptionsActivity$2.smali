.class Lcom/perm/kate/PhotoUploadOptionsActivity$2;
.super Ljava/lang/Object;
.source "PhotoUploadOptionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoUploadOptionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoUploadOptionsActivity;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$2;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 118
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.EDIT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$2;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    iget-object v0, v0, Lcom/perm/kate/PhotoUploadOptionsActivity;->uris:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 121
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 122
    iget-object v1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$2;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    const-string v2, "com.perm.kate.provider"

    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    const-string v1, "image/*"

    .line 123
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    iget-object v0, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$2;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 126
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 127
    iget-object p1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$2;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-virtual {p1}, Lcom/perm/kate/PhotoUploadOptionsActivity;->showEditInfo()V

    :goto_0
    return-void
.end method
