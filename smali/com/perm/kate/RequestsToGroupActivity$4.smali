.class Lcom/perm/kate/RequestsToGroupActivity$4;
.super Ljava/lang/Object;
.source "RequestsToGroupActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 116
    iput-object p1, p0, Lcom/perm/kate/RequestsToGroupActivity$4;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 119
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/User;

    if-eqz p1, :cond_0

    .line 121
    sget-object p2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 122
    iget-wide p1, p1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/perm/kate/RequestsToGroupActivity$4;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
