.class Lcom/perm/kate/MessagesFragment$16;
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

    .line 708
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$16;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 711
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$16;->this$0:Lcom/perm/kate/MessagesFragment;

    add-int/2addr p2, p3

    invoke-static {p1, p2, p4}, Lcom/perm/kate/MessagesFragment;->access$1700(Lcom/perm/kate/MessagesFragment;II)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 715
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$16;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-object p1, p1, Lcom/perm/kate/MessagesFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    invoke-virtual {p1, p2}, Lcom/perm/utils/ScrollPauser;->scrollStateChanged(I)V

    return-void
.end method
