.class Lcom/perm/kate/GroupsFragment$13;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupsFragment;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/perm/kate/GroupsFragment$13;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 478
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$13;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {p1, p3}, Lcom/perm/kate/GroupsFragment;->access$2300(Lcom/perm/kate/GroupsFragment;I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
