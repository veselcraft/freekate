.class Lcom/perm/kate/SearchParamsActivity$14;
.super Ljava/lang/Object;
.source "SearchParamsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchParamsActivity;->performClickCountriesSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchParamsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchParamsActivity;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity$14;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$14;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchParamsActivity;->access$1500(Lcom/perm/kate/SearchParamsActivity;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    return-void
.end method
