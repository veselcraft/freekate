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
    .param p1, "this$0"    # Lcom/perm/kate/PhotoUploadOptionsActivity;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$2;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 109
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$2;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    iget-object v2, v2, Lcom/perm/kate/PhotoUploadOptionsActivity;->uris:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    const-string v3, "image/*"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v2, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$2;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Lcom/perm/kate/PhotoUploadOptionsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 114
    iget-object v2, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$2;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-virtual {v2}, Lcom/perm/kate/PhotoUploadOptionsActivity;->showEditInfo()V

    goto :goto_0
.end method
