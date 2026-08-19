.class Lcom/perm/kate/SearchParamsActivity$13;
.super Ljava/lang/Object;
.source "SearchParamsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchParamsActivity;->loadCountries(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchParamsActivity;

.field final synthetic val$need_full:I


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchParamsActivity;I)V
    .locals 0

    .line 565
    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity$13;->this$0:Lcom/perm/kate/SearchParamsActivity;

    iput p2, p0, Lcom/perm/kate/SearchParamsActivity$13;->val$need_full:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 568
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget v1, p0, Lcom/perm/kate/SearchParamsActivity$13;->val$need_full:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/SearchParamsActivity$13;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchParamsActivity;->access$2300(Lcom/perm/kate/SearchParamsActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/SearchParamsActivity$13;->this$0:Lcom/perm/kate/SearchParamsActivity;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/perm/kate/session/Session;->getCountriesByCode(Ljava/lang/Integer;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
