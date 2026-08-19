.class Lcom/perm/kate/SearchParamsActivity$12;
.super Ljava/lang/Object;
.source "SearchParamsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchParamsActivity;->loadCitiesByCountry(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchParamsActivity;

.field final synthetic val$_city_query:Ljava/lang/String;

.field final synthetic val$cid:I


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchParamsActivity;ILjava/lang/String;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity$12;->this$0:Lcom/perm/kate/SearchParamsActivity;

    iput p2, p0, Lcom/perm/kate/SearchParamsActivity$12;->val$cid:I

    iput-object p3, p0, Lcom/perm/kate/SearchParamsActivity$12;->val$_city_query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 557
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget v1, p0, Lcom/perm/kate/SearchParamsActivity$12;->val$cid:I

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity$12;->val$_city_query:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity$12;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {v3}, Lcom/perm/kate/SearchParamsActivity;->access$2200(Lcom/perm/kate/SearchParamsActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/SearchParamsActivity$12;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->getCitiesByCountry(ILjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
