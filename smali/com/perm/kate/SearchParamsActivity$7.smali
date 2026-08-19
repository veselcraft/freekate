.class Lcom/perm/kate/SearchParamsActivity$7;
.super Lcom/perm/kate/session/Callback;
.source "SearchParamsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchParamsActivity;->lambda$downloadUnivers$0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchParamsActivity;


# direct methods
.method public static synthetic $r8$lambda$mquhU_97O_coXYUQjlFOWwkayIY(Lcom/perm/kate/SearchParamsActivity$7;)V
    .locals 0

    invoke-direct {p0}, Lcom/perm/kate/SearchParamsActivity$7;->lambda$ready$0()V

    return-void
.end method

.method constructor <init>(Lcom/perm/kate/SearchParamsActivity;Landroid/app/Activity;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity$7;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic lambda$ready$0()V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$7;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchParamsActivity;->access$2400(Lcom/perm/kate/SearchParamsActivity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$7;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 376
    :cond_0
    check-cast p1, Ljava/util/ArrayList;

    sput-object p1, Lcom/perm/kate/SearchParamsActivity;->univers:Ljava/util/ArrayList;

    .line 377
    iget-object p1, p0, Lcom/perm/kate/SearchParamsActivity$7;->this$0:Lcom/perm/kate/SearchParamsActivity;

    new-instance v0, Lcom/perm/kate/SearchParamsActivity$7$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchParamsActivity$7$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/SearchParamsActivity$7;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
