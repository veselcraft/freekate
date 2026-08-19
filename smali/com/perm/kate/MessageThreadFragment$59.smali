.class Lcom/perm/kate/MessageThreadFragment$59;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 3116
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$59;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 3120
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$59;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$6800(Lcom/perm/kate/MessageThreadFragment;)V

    goto :goto_0

    .line 3122
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$59;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$6900(Lcom/perm/kate/MessageThreadFragment;)V

    :goto_0
    return-void
.end method
