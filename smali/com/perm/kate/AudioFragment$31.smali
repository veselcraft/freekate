.class Lcom/perm/kate/AudioFragment$31;
.super Ljava/lang/Object;
.source "AudioFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;)V
    .locals 0

    .line 1166
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$31;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p2, p3

    add-int/lit8 p4, p4, -0x2

    if-lt p2, p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1170
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$31;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {p1}, Lcom/perm/kate/AudioFragment;->access$800(Lcom/perm/kate/AudioFragment;)I

    move-result p1

    if-nez p1, :cond_1

    .line 1171
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$31;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {p1}, Lcom/perm/kate/AudioFragment;->access$3900(Lcom/perm/kate/AudioFragment;)V

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
