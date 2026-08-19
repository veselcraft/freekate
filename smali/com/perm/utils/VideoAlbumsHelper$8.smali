.class Lcom/perm/utils/VideoAlbumsHelper$8;
.super Ljava/lang/Object;
.source "VideoAlbumsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic val$callback:Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;


# direct methods
.method constructor <init>(Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/perm/utils/VideoAlbumsHelper$8;->val$callback:Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 164
    iget-object p1, p0, Lcom/perm/utils/VideoAlbumsHelper$8;->val$callback:Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

    if-eqz p1, :cond_0

    .line 165
    invoke-interface {p1}, Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;->update()V

    :cond_0
    const/4 p1, 0x0

    .line 166
    sput-object p1, Lcom/perm/utils/VideoAlbumsHelper;->albumDialog:Landroidx/appcompat/app/AlertDialog;

    .line 167
    sput-object p1, Lcom/perm/utils/VideoAlbumsHelper;->errorCallback:Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;

    return-void
.end method
