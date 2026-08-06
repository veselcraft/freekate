.class Lcom/perm/kate/MessageThreadFragment$41;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessageThreadFragment;->showBackgroundDialog()V
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
    .line 2072
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$41;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2075
    if-nez p2, :cond_0

    .line 2076
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$41;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$4400(Lcom/perm/kate/MessageThreadFragment;)V

    .line 2079
    :goto_0
    return-void

    .line 2078
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$41;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$4500(Lcom/perm/kate/MessageThreadFragment;)V

    goto :goto_0
.end method
