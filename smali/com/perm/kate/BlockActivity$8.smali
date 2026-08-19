.class Lcom/perm/kate/BlockActivity$8;
.super Ljava/lang/Object;
.source "BlockActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/BlockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BlockActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/BlockActivity;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/perm/kate/BlockActivity$8;->this$0:Lcom/perm/kate/BlockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 224
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x17

    if-eq p2, p1, :cond_0

    const/16 p1, 0x42

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/BlockActivity$8;->this$0:Lcom/perm/kate/BlockActivity;

    invoke-static {p1}, Lcom/perm/kate/BlockActivity;->access$100(Lcom/perm/kate/BlockActivity;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
