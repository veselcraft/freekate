.class public interface abstract Lorg/apache/http/HttpMessage;
.super Ljava/lang/Object;
.source "HttpMessage.java"


# virtual methods
.method public abstract getAllHeaders()[Lorg/apache/http/Header;
.end method

.method public abstract getParams()Lorg/apache/http/params/HttpParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method
