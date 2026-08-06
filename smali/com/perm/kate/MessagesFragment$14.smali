.class Lcom/perm/kate/MessagesFragment$14;
.super Ljava/lang/Object;
.source "MessagesFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessagesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessagesFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessagesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessagesFragment;

    .prologue
    .line 575
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$14;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisible"    # I
    .param p3, "visibleCount"    # I
    .param p4, "totalCount"    # I

    .prologue
    .line 578
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$14;->this$0:Lcom/perm/kate/MessagesFragment;

    add-int v1, p2, p3

    invoke-static {v0, v1, p4}, Lcom/perm/kate/MessagesFragment;->access$1500(Lcom/perm/kate/MessagesFragment;II)V

    .line 579
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 582
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$14;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-object v0, v0, Lcom/perm/kate/MessagesFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    invoke-virtual {v0, p2}, Lcom/perm/utils/ScrollPauser;->scrollStateChanged(I)V

    .line 583
    return-void
.end method
