.class Lcom/perm/kate/CheckMembersActivity$4;
.super Ljava/lang/Object;
.source "CheckMembersActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/CheckMembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CheckMembersActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/CheckMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/CheckMembersActivity;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/perm/kate/CheckMembersActivity$4;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisible"    # I
    .param p3, "visibleCount"    # I
    .param p4, "totalCount"    # I

    .prologue
    .line 104
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity$4;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-static {v0}, Lcom/perm/kate/CheckMembersActivity;->access$600(Lcom/perm/kate/CheckMembersActivity;)Lcom/perm/utils/ScrollPauser;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/perm/utils/ScrollPauser;->scrollStateChanged(I)V

    .line 108
    return-void
.end method
