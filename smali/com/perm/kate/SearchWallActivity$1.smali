.class Lcom/perm/kate/SearchWallActivity$1;
.super Ljava/lang/Object;
.source "SearchWallActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchWallActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchWallActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchWallActivity;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/perm/kate/SearchWallActivity$1;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    if-eqz p2, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 89
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/SearchWallActivity$1;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchWallActivity;->access$000(Lcom/perm/kate/SearchWallActivity;)V

    const/4 p1, 0x1

    return p1
.end method
