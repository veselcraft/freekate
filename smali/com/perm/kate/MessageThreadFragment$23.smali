.class Lcom/perm/kate/MessageThreadFragment$23;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 1653
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$23;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1656
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$23;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1}, Lcom/perm/kate/MessageThreadFragment;->clearSelectedMessages()V

    return-void
.end method
