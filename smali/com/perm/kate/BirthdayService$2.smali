.class Lcom/perm/kate/BirthdayService$2;
.super Lcom/perm/kate/session/Callback;
.source "BirthdayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/BirthdayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BirthdayService;


# direct methods
.method constructor <init>(Lcom/perm/kate/BirthdayService;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/BirthdayService;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/perm/kate/BirthdayService$2;->this$0:Lcom/perm/kate/BirthdayService;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 126
    iget-object v0, p0, Lcom/perm/kate/BirthdayService$2;->this$0:Lcom/perm/kate/BirthdayService;

    iget-object v1, p0, Lcom/perm/kate/BirthdayService$2;->this$0:Lcom/perm/kate/BirthdayService;

    iget-wide v2, v1, Lcom/perm/kate/BirthdayService;->account_id:J

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/BirthdayService;->checkBirthdays(J)V

    .line 127
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 118
    iget-object v1, p0, Lcom/perm/kate/BirthdayService$2;->this$0:Lcom/perm/kate/BirthdayService;

    iget-object v2, p0, Lcom/perm/kate/BirthdayService$2;->this$0:Lcom/perm/kate/BirthdayService;

    iget-wide v2, v2, Lcom/perm/kate/BirthdayService;->account_id:J

    invoke-static {v1, v2, v3}, Lcom/perm/kate/BirthdayHelper;->updateLastRefresh(Landroid/content/Context;J)V

    move-object v0, p1

    .line 119
    check-cast v0, Ljava/util/ArrayList;

    .line 120
    .local v0, "friends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/BirthdayService$2;->this$0:Lcom/perm/kate/BirthdayService;

    iget-wide v2, v2, Lcom/perm/kate/BirthdayService;->account_id:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->createFriends(Ljava/util/ArrayList;J)V

    .line 121
    iget-object v1, p0, Lcom/perm/kate/BirthdayService$2;->this$0:Lcom/perm/kate/BirthdayService;

    iget-object v2, p0, Lcom/perm/kate/BirthdayService$2;->this$0:Lcom/perm/kate/BirthdayService;

    iget-wide v2, v2, Lcom/perm/kate/BirthdayService;->account_id:J

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/BirthdayService;->checkBirthdays(J)V

    .line 122
    return-void
.end method
