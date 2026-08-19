.class Lcom/perm/kate/GroupsInvitesAdapter$1;
.super Ljava/lang/Object;
.source "GroupsInvitesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupsInvitesAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupsInvitesAdapter;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/perm/kate/GroupsInvitesAdapter$1;->this$0:Lcom/perm/kate/GroupsInvitesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesAdapter$1;->this$0:Lcom/perm/kate/GroupsInvitesAdapter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/perm/kate/GroupsInvitesAdapter;->access$000(Lcom/perm/kate/GroupsInvitesAdapter;Landroid/view/View;ZZ)V

    return-void
.end method
