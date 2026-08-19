.class Lcom/perm/kate/FaveUsersFragment$5;
.super Ljava/lang/Object;
.source "FaveUsersFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveUsersFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveUsersFragment;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/perm/kate/FaveUsersFragment$5;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 149
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 151
    iget-object p2, p0, Lcom/perm/kate/FaveUsersFragment$5;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-virtual {p2, p1}, Lcom/perm/kate/FaveUsersFragment;->ShowProfile(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
