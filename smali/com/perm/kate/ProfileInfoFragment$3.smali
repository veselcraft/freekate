.class Lcom/perm/kate/ProfileInfoFragment$3;
.super Lcom/perm/kate/session/Callback;
.source "ProfileInfoFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;Landroid/app/Activity;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$3;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 506
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 507
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment$3;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Country;

    iget-object p1, p1, Lcom/perm/kate/api/Country;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/perm/kate/ProfileInfoFragment;->access$402(Lcom/perm/kate/ProfileInfoFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 509
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment$3;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {v0}, Lcom/perm/kate/ProfileInfoFragment;->access$000(Lcom/perm/kate/ProfileInfoFragment;)Lcom/perm/kate/api/User;

    move-result-object v0

    iget-object v0, v0, Lcom/perm/kate/api/User;->country:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment$3;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {v2}, Lcom/perm/kate/ProfileInfoFragment;->access$400(Lcom/perm/kate/ProfileInfoFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->createCountry(JLjava/lang/String;)J

    .line 510
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$3;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileInfoFragment;->access$300(Lcom/perm/kate/ProfileInfoFragment;)V

    :cond_0
    return-void
.end method
