.class Lcom/perm/kate/ProfileFragment$7;
.super Lcom/perm/kate/session/Callback;
.source "ProfileFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V
    .locals 0

    .line 871
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$7;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 875
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 876
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$7;->this$0:Lcom/perm/kate/ProfileFragment;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Country;

    iget-object p1, p1, Lcom/perm/kate/api/Country;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/perm/kate/ProfileFragment;->access$1902(Lcom/perm/kate/ProfileFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 878
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$7;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v0}, Lcom/perm/kate/ProfileFragment;->access$800(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/api/User;

    move-result-object v0

    iget-object v0, v0, Lcom/perm/kate/api/User;->country:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment$7;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v2}, Lcom/perm/kate/ProfileFragment;->access$1900(Lcom/perm/kate/ProfileFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->createCountry(JLjava/lang/String;)J

    .line 879
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$7;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileFragment;->access$1000(Lcom/perm/kate/ProfileFragment;)V

    :cond_0
    return-void
.end method
