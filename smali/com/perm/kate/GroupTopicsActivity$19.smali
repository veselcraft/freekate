.class Lcom/perm/kate/GroupTopicsActivity$19;
.super Ljava/lang/Object;
.source "GroupTopicsActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupTopicsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupTopicsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupTopicsActivity;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$19;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p2, p3

    const/4 p1, 0x1

    sub-int/2addr p4, p1

    if-lt p2, p4, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 450
    iget-object p2, p0, Lcom/perm/kate/GroupTopicsActivity$19;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {p2}, Lcom/perm/kate/GroupTopicsActivity;->access$000(Lcom/perm/kate/GroupTopicsActivity;)I

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "Kate.GroupTopicsActivit"

    const-string p3, "Loading more"

    .line 451
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object p2, p0, Lcom/perm/kate/GroupTopicsActivity$19;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {p2, p1}, Lcom/perm/kate/GroupTopicsActivity;->access$002(Lcom/perm/kate/GroupTopicsActivity;I)I

    .line 453
    iget-object p2, p0, Lcom/perm/kate/GroupTopicsActivity$19;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {p2}, Lcom/perm/kate/GroupTopicsActivity;->access$1300(Lcom/perm/kate/GroupTopicsActivity;)V

    .line 454
    iget-object p2, p0, Lcom/perm/kate/GroupTopicsActivity$19;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-virtual {p2, p1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
