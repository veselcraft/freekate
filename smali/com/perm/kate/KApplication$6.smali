.class Lcom/perm/kate/KApplication$6;
.super Ljava/lang/Object;
.source "KApplication.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/KApplication;->disableSSLValidation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/KApplication;


# direct methods
.method constructor <init>(Lcom/perm/kate/KApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/KApplication;

    .prologue
    .line 539
    iput-object p1, p0, Lcom/perm/kate/KApplication$6;->this$0:Lcom/perm/kate/KApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;

    .prologue
    .line 543
    const-string v0, "Kate.KApplication"

    const-string v1, "verify"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;

    .prologue
    .line 548
    const-string v0, "Kate.KApplication"

    const-string v1, "verify"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 2

    .prologue
    .line 553
    const-string v0, "Kate.KApplication"

    const-string v1, "verify"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/4 v0, 0x0

    return-object v0
.end method
