.class Lcom/perm/kate/MessageThreadFragment$8;
.super Lcom/perm/kate/MentionsAdapter$MentionSelectedListener;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$8;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Lcom/perm/kate/MentionsAdapter$MentionSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public selected(Lcom/perm/kate/api/ChatMember;)V
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$8;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/MessageThreadFragment;->access$1600(Lcom/perm/kate/MessageThreadFragment;Lcom/perm/kate/api/ChatMember;)V

    .line 577
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$8;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$1700(Lcom/perm/kate/MessageThreadFragment;)V

    return-void
.end method
