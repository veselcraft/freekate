.class public Lcom/perm/kate/KApplication$NullHostNameVerifier;
.super Ljava/lang/Object;
.source "KApplication.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/KApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NullHostNameVerifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/KApplication;


# direct methods
.method public constructor <init>(Lcom/perm/kate/KApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/KApplication;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/perm/kate/KApplication$NullHostNameVerifier;->this$0:Lcom/perm/kate/KApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 574
    const-string v0, "Kate.KApplication"

    const-string v1, "verify"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const/4 v0, 0x1

    return v0
.end method
