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

    .line 108
    iput-object p1, p0, Lcom/perm/kate/CheckMembersActivity$4;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 114
    iget-object p1, p0, Lcom/perm/kate/CheckMembersActivity$4;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-static {p1}, Lcom/perm/kate/CheckMembersActivity;->access$700(Lcom/perm/kate/CheckMembersActivity;)Lcom/perm/utils/ScrollPauser;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/perm/utils/ScrollPauser;->scrollStateChanged(I)V

    return-void
.end method
