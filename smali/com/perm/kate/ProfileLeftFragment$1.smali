.class Lcom/perm/kate/ProfileLeftFragment$1;
.super Ljava/lang/Object;
.source "ProfileLeftFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileLeftFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileLeftFragment;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/perm/kate/ProfileLeftFragment$1;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment$1;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-virtual {v0}, Lcom/perm/kate/ProfileLeftFragment;->refreshInThread()V

    return-void
.end method
