.class Lcom/perm/kate/RequestsToGroupActivity$6;
.super Ljava/lang/Object;
.source "RequestsToGroupActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/RequestsToGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/RequestsToGroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/RequestsToGroupActivity;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/perm/kate/RequestsToGroupActivity$6;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

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

    .line 172
    iget-object p2, p0, Lcom/perm/kate/RequestsToGroupActivity$6;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-static {p2}, Lcom/perm/kate/RequestsToGroupActivity;->access$600(Lcom/perm/kate/RequestsToGroupActivity;)I

    move-result p2

    if-nez p2, :cond_2

    .line 173
    iget-object p2, p0, Lcom/perm/kate/RequestsToGroupActivity$6;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-static {p2, p1}, Lcom/perm/kate/RequestsToGroupActivity;->access$602(Lcom/perm/kate/RequestsToGroupActivity;I)I

    .line 174
    iget-object p2, p0, Lcom/perm/kate/RequestsToGroupActivity$6;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-static {p2}, Lcom/perm/kate/RequestsToGroupActivity;->access$700(Lcom/perm/kate/RequestsToGroupActivity;)V

    .line 175
    iget-object p2, p0, Lcom/perm/kate/RequestsToGroupActivity$6;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-virtual {p2, p1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    :cond_2
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 180
    iget-object p1, p0, Lcom/perm/kate/RequestsToGroupActivity$6;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-static {p1}, Lcom/perm/kate/RequestsToGroupActivity;->access$800(Lcom/perm/kate/RequestsToGroupActivity;)Lcom/perm/utils/ScrollPauser;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/perm/utils/ScrollPauser;->scrollStateChanged(I)V

    return-void
.end method
