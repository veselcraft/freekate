.class Lcom/perm/kate/ProfileFragment$8;
.super Lcom/perm/kate/session/Callback;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 851
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$8;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 855
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 856
    .local v0, "countries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Country;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 857
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment$8;->this$0:Lcom/perm/kate/ProfileFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Country;

    iget-object v1, v1, Lcom/perm/kate/api/Country;->name:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/perm/kate/ProfileFragment;->access$1702(Lcom/perm/kate/ProfileFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 858
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment$8;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v2}, Lcom/perm/kate/ProfileFragment;->access$800(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/api/User;

    move-result-object v2

    iget-object v2, v2, Lcom/perm/kate/api/User;->country:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/perm/kate/ProfileFragment$8;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v4}, Lcom/perm/kate/ProfileFragment;->access$1700(Lcom/perm/kate/ProfileFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->createCountry(JLjava/lang/String;)J

    .line 859
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$8;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v1}, Lcom/perm/kate/ProfileFragment;->access$1000(Lcom/perm/kate/ProfileFragment;)V

    .line 861
    :cond_0
    return-void
.end method
