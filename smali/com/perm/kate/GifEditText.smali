.class public Lcom/perm/kate/GifEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "GifEditText.java"


# instance fields
.field private baseFragment:Lcom/perm/kate/BaseFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/perm/kate/GifEditText;->baseFragment:Lcom/perm/kate/BaseFragment;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GifEditText;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/GifEditText;->onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)V

    return-void
.end method

.method private onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)V
    .locals 0

    .line 53
    iget-object p2, p0, Lcom/perm/kate/GifEditText;->baseFragment:Lcom/perm/kate/BaseFragment;

    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/perm/kate/BaseFragment;->onCommitContent(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4

    .line 29
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "image/gif"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "image/png"

    aput-object v3, v1, v2

    .line 30
    invoke-static {p1, v1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setContentMimeTypes(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V

    .line 31
    new-instance v1, Lcom/perm/kate/GifEditText$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/GifEditText$1;-><init>(Lcom/perm/kate/GifEditText;)V

    .line 49
    invoke-static {v0, p1, v1}, Landroidx/core/view/inputmethod/InputConnectionCompat;->createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public setBaseFragment(Lcom/perm/kate/BaseFragment;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/perm/kate/GifEditText;->baseFragment:Lcom/perm/kate/BaseFragment;

    return-void
.end method
