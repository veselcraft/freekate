.class Lcom/perm/kate/GroupMembersActivity$6;
.super Ljava/lang/Object;
.source "GroupMembersActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupMembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupMembersActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupMembersActivity;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/perm/kate/GroupMembersActivity$6;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    :cond_0
    add-int/2addr p2, p3

    add-int/lit8 p4, p4, -0x2

    const/4 p1, 0x1

    if-lt p2, p4, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 207
    iget-object p2, p0, Lcom/perm/kate/GroupMembersActivity$6;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-static {p2}, Lcom/perm/kate/GroupMembersActivity;->access$600(Lcom/perm/kate/GroupMembersActivity;)I

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "Kate.GroupMembersActivi"

    const-string p3, "Loading more"

    .line 208
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object p2, p0, Lcom/perm/kate/GroupMembersActivity$6;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-static {p2, p1}, Lcom/perm/kate/GroupMembersActivity;->access$602(Lcom/perm/kate/GroupMembersActivity;I)I

    .line 210
    iget-object p2, p0, Lcom/perm/kate/GroupMembersActivity$6;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-static {p2}, Lcom/perm/kate/GroupMembersActivity;->access$900(Lcom/perm/kate/GroupMembersActivity;)V

    .line 211
    iget-object p2, p0, Lcom/perm/kate/GroupMembersActivity$6;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-virtual {p2, p1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    :cond_2
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 216
    iget-object p1, p0, Lcom/perm/kate/GroupMembersActivity$6;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupMembersActivity;->access$1000(Lcom/perm/kate/GroupMembersActivity;)Lcom/perm/utils/ScrollPauser;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/perm/utils/ScrollPauser;->scrollStateChanged(I)V

    return-void
.end method
