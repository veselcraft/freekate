.class Lcom/perm/kate/MessageThreadFragment$18;
.super Lcom/perm/kate/session/Callback;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;Landroid/app/Activity;)V
    .locals 0

    .line 1339
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$18;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 1346
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 1348
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$18;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/perm/kate/MessageThreadFragment;->access$2000(Lcom/perm/kate/MessageThreadFragment;I)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
