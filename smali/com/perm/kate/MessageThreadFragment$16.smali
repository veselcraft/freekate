.class Lcom/perm/kate/MessageThreadFragment$16;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessageThreadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$16;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 1019
    if-eqz p2, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$16;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Lcom/perm/kate/MessageThreadFragment;->markAllAsRead()V

    .line 1022
    :cond_0
    return-void
.end method
