.class Lcom/perm/utils/VideoAlbumsHelper$7;
.super Ljava/lang/Object;
.source "VideoAlbumsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$callback:Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;


# direct methods
.method constructor <init>(Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/perm/utils/VideoAlbumsHelper$7;->val$callback:Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 154
    iget-object p1, p0, Lcom/perm/utils/VideoAlbumsHelper$7;->val$callback:Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

    if-eqz p1, :cond_0

    .line 155
    invoke-interface {p1}, Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;->update()V

    :cond_0
    const/4 p1, 0x0

    .line 156
    sput-object p1, Lcom/perm/utils/VideoAlbumsHelper;->albumDialog:Landroidx/appcompat/app/AlertDialog;

    .line 157
    sput-object p1, Lcom/perm/utils/VideoAlbumsHelper;->errorCallback:Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;

    return-void
.end method
