.class Lcom/perm/kate/AudioFragment$3;
.super Ljava/lang/Object;
.source "AudioFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$3;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 134
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$3;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {p1}, Lcom/perm/kate/AudioFragment;->access$100(Lcom/perm/kate/AudioFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$3;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {p1}, Lcom/perm/kate/AudioFragment;->access$200(Lcom/perm/kate/AudioFragment;)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$3;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {p1}, Lcom/perm/kate/AudioFragment;->access$300(Lcom/perm/kate/AudioFragment;)V

    :goto_0
    return-void
.end method
