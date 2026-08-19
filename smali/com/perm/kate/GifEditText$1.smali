.class Lcom/perm/kate/GifEditText$1;
.super Ljava/lang/Object;
.source "GifEditText.java"

# interfaces
.implements Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GifEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GifEditText;


# direct methods
.method constructor <init>(Lcom/perm/kate/GifEditText;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/perm/kate/GifEditText$1;->this$0:Lcom/perm/kate/GifEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .locals 1

    .line 35
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastNMR1()Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 38
    :try_start_0
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->requestPermission()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    return p1

    .line 45
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/GifEditText$1;->this$0:Lcom/perm/kate/GifEditText;

    invoke-static {v0, p1, p2, p3}, Lcom/perm/kate/GifEditText;->access$000(Lcom/perm/kate/GifEditText;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1
.end method
