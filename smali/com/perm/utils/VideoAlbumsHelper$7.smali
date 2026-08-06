.class final Lcom/perm/utils/VideoAlbumsHelper$7;
.super Ljava/lang/Object;
.source "VideoAlbumsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/VideoAlbumsHelper;->showAlbumsDialog(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;


# direct methods
.method constructor <init>(Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/perm/utils/VideoAlbumsHelper$7;->val$callback:Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-object v0, p0, Lcom/perm/utils/VideoAlbumsHelper$7;->val$callback:Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/perm/utils/VideoAlbumsHelper$7;->val$callback:Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

    invoke-interface {v0}, Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;->update()V

    .line 157
    :cond_0
    sput-object v1, Lcom/perm/utils/VideoAlbumsHelper;->albumDialog:Landroid/support/v7/app/AlertDialog;

    .line 158
    sput-object v1, Lcom/perm/utils/VideoAlbumsHelper;->errorCallback:Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;

    .line 159
    return-void
.end method
