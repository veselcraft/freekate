.class Lcom/perm/kate/PollVotersActivity$5;
.super Ljava/lang/Object;
.source "PollVotersActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PollVotersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PollVotersActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PollVotersActivity;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/perm/kate/PollVotersActivity$5;->this$0:Lcom/perm/kate/PollVotersActivity;

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

    .line 175
    iget-object p2, p0, Lcom/perm/kate/PollVotersActivity$5;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {p2}, Lcom/perm/kate/PollVotersActivity;->access$900(Lcom/perm/kate/PollVotersActivity;)I

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "Kate.PollVotersActivity"

    const-string p3, "Loading more"

    .line 176
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object p2, p0, Lcom/perm/kate/PollVotersActivity$5;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {p2, p1}, Lcom/perm/kate/PollVotersActivity;->access$902(Lcom/perm/kate/PollVotersActivity;I)I

    .line 178
    iget-object p2, p0, Lcom/perm/kate/PollVotersActivity$5;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {p2}, Lcom/perm/kate/PollVotersActivity;->access$1000(Lcom/perm/kate/PollVotersActivity;)V

    .line 179
    iget-object p2, p0, Lcom/perm/kate/PollVotersActivity$5;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-virtual {p2, p1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    :cond_2
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 184
    iget-object p1, p0, Lcom/perm/kate/PollVotersActivity$5;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {p1}, Lcom/perm/kate/PollVotersActivity;->access$1100(Lcom/perm/kate/PollVotersActivity;)Lcom/perm/utils/ScrollPauser;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/perm/utils/ScrollPauser;->scrollStateChanged(I)V

    return-void
.end method
